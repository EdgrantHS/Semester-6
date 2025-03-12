% Membaca gambar sumber
img = imread('image.jpg');

% Mendapatkan ukuran gambar
[M, N, P] = size(img);

% Mengubah gambar ke skala abu-abu 
if size(img, 3) == 3
    img_gray = rgb2gray(img);
end

% Transformasi Fourier dari gambar grayscale
F_gray = fft2(img_gray);
Fshifted_gray = fftshift(F_gray); 

% Transformasi Fourier dari gambar berwarna
F_color = fft2(img);
Fshifted_color = fftshift(F_color); 

% Fungsi untuk membuat filter
function H = createFilter(filterType, passType, D0, N, M)
    [U, V] = meshgrid(1:N, 1:M);
    U = U - floor(N/2);
    V = V - floor(M/2);
    D = sqrt(U.^2 + V.^2);

    switch filterType
        case 'ideal'
            if strcmp(passType, 'LP')
                H = double(D <= D0);
            else
                H = double(D > D0);
            end
        case 'butterworth'
            n = 2; 
            if strcmp(passType, 'LP')
                H = 1 ./ (1 + (D ./ D0).^(2*n));
            else
                H = 1 ./ (1 + (D0 ./ D).^(2*n));
            end
        case 'gaussian'
            if strcmp(passType, 'LP')
                H = exp(-(D.^2) ./ (2 * D0^2));
            else
                H = 1 - exp(-(D.^2) ./ (2 * D0^2));
            end
    end
end

% Nilai D0 (kekuatan filter) yang akan digunakan
D0_values = [15, 30, 80];

% Tipe filter
filterTypes = {'ideal', 'butterworth', 'gaussian'};

% Membuat folder untuk menyimpan hasil filter jika belum ada
for i = 1:length(filterTypes)
    if ~exist(filterTypes{i}, 'dir')
        mkdir(filterTypes{i});
    end
end

% Menerapkan filter dan menyimpan gambar (grayscale dan berwarna)
for i = 1:length(filterTypes)
    filterType = filterTypes{i};
    for j = 1:length(D0_values)
        D0 = D0_values(j);

        % Membuat filter high pass dan low pass
        H_LP = createFilter(filterType, 'LP', D0, N, M);
        H_HP = createFilter(filterType, 'HP', D0, N, M);

        % Menerapkan filter ke gambar grayscale
        G_LP_gray = H_LP .* Fshifted_gray;
        G_HP_gray = H_HP .* Fshifted_gray;

        % Mengembalikan frekuensi nol ke posisi semula (grayscale)
        G_LP_shifted_gray = ifftshift(G_LP_gray);
        G_HP_shifted_gray = ifftshift(G_HP_gray);

        % Transformasi Fourier terbalik (grayscale)
        g_LP_gray = ifft2(G_LP_shifted_gray);
        g_HP_gray = ifft2(G_HP_shifted_gray);

        % Menyimpan gambar grayscale
        imwrite(uint8(abs(g_LP_gray)), sprintf('%s/LP_gray_D0_%d.jpg', filterType, D0));
        imwrite(uint8(abs(g_HP_gray)), sprintf('%s/HP_gray_D0_%d.jpg', filterType, D0));
        
        
        % Menerapkan filter ke gambar berwarna (per channel)
        for k = 1:P
            G_LP_color(:,:,k) = H_LP .* Fshifted_color(:,:,k);
            G_HP_color(:,:,k) = H_HP .* Fshifted_color(:,:,k);
        end

        % Mengembalikan frekuensi nol ke posisi semula (berwarna)
        G_LP_shifted_color = ifftshift(G_LP_color);
        G_HP_shifted_color = ifftshift(G_HP_color);

        % Transformasi Fourier terbalik (berwarna)
        g_LP_color = ifft2(G_LP_shifted_color);
        g_HP_color = ifft2(G_HP_shifted_color);

        % Menyimpan gambar berwarna
        imwrite(uint8(abs(g_LP_color)), sprintf('%s/LP_color_D0_%d.jpg', filterType, D0));
        imwrite(uint8(abs(g_HP_color)), sprintf('%s/HP_color_D0_%d.jpg', filterType, D0));
    end
end

% Membuat gambar komparasi untuk setiap filter (grayscale dan berwarna)
for i = 1:length(filterTypes)
    filterType = filterTypes{i};
    
    % --- Komparasi Grayscale - Low Pass ---
    img_original_gray = img_gray;
    img_files_gray = dir(sprintf('%s/LP_gray_D0_*.jpg', filterType)); 
    
    num_images_gray = length(img_files_gray) + 1; 
    cols_gray = ceil(sqrt(num_images_gray)); 
    rows_gray = ceil(num_images_gray / cols_gray);
    
    % Memperbesar ukuran figure dan mengatur jarak antar gambar
    figure('Visible', 'off', 'PaperUnits', 'inches', 'PaperPosition', [0 0 16 16], 'Units', 'inches', 'Position', [0 0 16 16]); 
    subplot(rows_gray, cols_gray, 1); imshow(img_original_gray); title('Original Image');
    
    for j = 1:length(img_files_gray)
        img_path_gray = fullfile(img_files_gray(j).folder, img_files_gray(j).name);
        img_filtered_gray = imread(img_path_gray);
        subplot(rows_gray, cols_gray, j+1); imshow(img_filtered_gray); 
        
        [~, filename_gray, ~] = fileparts(img_path_gray);
        D0_str_gray = extractAfter(filename_gray, 'LP_gray_D0_');
        D0_gray = str2double(D0_str_gray);
        title(sprintf('D0 = %d', D0_gray));
    end
    
    sgtitle(sprintf('COMPARISON_LP_%s_gray', filterType)); 
    % Menyimpan gambar komparasi di folder yang sesuai
    print(gcf, sprintf('%s/COMPARISON_LP_%s_gray.jpg', filterType, filterType), '-djpeg', '-r300'); 
    close(gcf); 
    
    
    % --- Komparasi Berwarna - Low Pass ---
    img_original_color = img;
    img_files_color = dir(sprintf('%s/LP_color_D0_*.jpg', filterType)); 
    
    num_images_color = length(img_files_color) + 1; 
    cols_color = ceil(sqrt(num_images_color)); 
    rows_color = ceil(num_images_color / cols_color);
    
    % Memperbesar ukuran figure dan mengatur jarak antar gambar
    figure('Visible', 'off', 'PaperUnits', 'inches', 'PaperPosition', [0 0 16 16], 'Units', 'inches', 'Position', [0 0 16 16]); 
    subplot(rows_color, cols_color, 1); imshow(img_original_color); title('Original Image');
    
    for j = 1:length(img_files_color)
        img_path_color = fullfile(img_files_color(j).folder, img_files_color(j).name);
        img_filtered_color = imread(img_path_color);
        subplot(rows_color, cols_color, j+1); imshow(img_filtered_color); 
        
        [~, filename_color, ~] = fileparts(img_path_color);
        D0_str_color = extractAfter(filename_color, 'LP_color_D0_');
        D0_color = str2double(D0_str_color);
        title(sprintf('D0 = %d', D0_color));
    end
    
    sgtitle(sprintf('COMPARISON_LP_%s_color', filterType)); 
    % Menyimpan gambar komparasi di folder yang sesuai
    print(gcf, sprintf('%s/COMPARISON_LP_%s_color.jpg', filterType, filterType), '-djpeg', '-r300'); 
    close(gcf);
    
    
    % --- Komparasi Grayscale - High Pass ---
    img_files_gray = dir(sprintf('%s/HP_gray_D0_*.jpg', filterType)); 
    
    num_images_gray = length(img_files_gray) + 1; 
    cols_gray = ceil(sqrt(num_images_gray)); 
    rows_gray = ceil(num_images_gray / cols_gray);
    
    % Memperbesar ukuran figure dan mengatur jarak antar gambar
    figure('Visible', 'off', 'PaperUnits', 'inches', 'PaperPosition', [0 0 16 16], 'Units', 'inches', 'Position', [0 0 16 16]); 
    subplot(rows_gray, cols_gray, 1); imshow(img_original_gray); title('Original Image');
    
    for j = 1:length(img_files_gray)
        img_path_gray = fullfile(img_files_gray(j).folder, img_files_gray(j).name);
        img_filtered_gray = imread(img_path_gray);
        subplot(rows_gray, cols_gray, j+1); imshow(img_filtered_gray); 
        
        [~, filename_gray, ~] = fileparts(img_path_gray);
        D0_str_gray = extractAfter(filename_gray, 'HP_gray_D0_');
        D0_gray = str2double(D0_str_gray);
        title(sprintf('D0 = %d', D0_gray));
    end
    
    sgtitle(sprintf('COMPARISON_HP_%s_gray', filterType)); 
    % Menyimpan gambar komparasi di folder yang sesuai
    print(gcf, sprintf('%s/COMPARISON_HP_%s_gray.jpg', filterType, filterType), '-djpeg', '-r300'); 
    close(gcf); 
    
    
    % --- Komparasi Berwarna - High Pass ---
    img_files_color = dir(sprintf('%s/HP_color_D0_*.jpg', filterType)); 
    
    num_images_color = length(img_files_color) + 1; 
    cols_color = ceil(sqrt(num_images_color)); 
    rows_color = ceil(num_images_color / cols_color);
    
    % Memperbesar ukuran figure dan mengatur jarak antar gambar
    figure('Visible', 'off', 'PaperUnits', 'inches', 'PaperPosition', [0 0 16 16], 'Units', 'inches', 'Position', [0 0 16 16]); 
    subplot(rows_color, cols_color, 1); imshow(img_original_color); title('Original Image');
    
    for j = 1:length(img_files_color)
        img_path_color = fullfile(img_files_color(j).folder, img_files_color(j).name);
        img_filtered_color = imread(img_path_color);
        subplot(rows_color, cols_color, j+1); imshow(img_filtered_color); 
        
        [~, filename_color, ~] = fileparts(img_path_color);
        D0_str_color = extractAfter(filename_color, 'HP_color_D0_');
        D0_color = str2double(D0_str_color);
        title(sprintf('D0 = %d', D0_color));
    end
    
    sgtitle(sprintf('COMPARISON_HP_%s_color', filterType)); 
    % Menyimpan gambar komparasi di folder yang sesuai
    print(gcf, sprintf('%s/COMPARISON_HP_%s_color.jpg', filterType, filterType), '-djpeg', '-r300'); 
    close(gcf); 
end