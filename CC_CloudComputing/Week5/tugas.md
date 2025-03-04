# Power point: Cloud Security

## 7.5 Secure Transmissions

### Slide 1: Title

Title: Keamanan Transmisi
Subtitle: Enkripsi Data dan Trade-off Keamanan dan Efisiensi

### Slide 2: Pentingnya Keamanan Transmisi

- Seberapa aman pun data di dalam sistem, jika data tersebut harus dipindahkan ke sistem lain, data tersebut dapat terancam keamanannya.
- Saat data dipindahkan, data berada pada lingkungan publik yang diluar kontrol sistem; kemanan tidak lagi terjamin.
- Solusinya adalah dengan mengenkripsi data.

### Slide 3: Trade-off Keamanan dan Efisiensi

- Keamanan data tergantung pada enkripsinya.
- Namun, bukan berarti kita harus menggunakan enkripsi yang paling kuat.
- Enkripsi yang kuat membutuhkan waktu dan sumber daya yang besar untuk dipecahkan.
- Keputusan trade-off antara keamanan dan efisiensi harus dilakukan dengan mempertimbangkan nilai dan "umur" data.

### Slide 4: Contoh Trade-off

### Contoh 1

- Pengumuman diplomatik yang akan diumumkan pada hari berikutnya.
- Data tersebut memiliki "umur" yang terbatas, hanya perlu diamankan selama 2 hari. 
- Sehingga, enkripsi yang digunakan tidak perlu terlalu kuat.

### Contoh 2

- Deskripsi investasi jangka panjang yang memiliki nilai jangka panjang.
- Data tersebut memiliki "umur" yang panjang, sehingga enkripsi yang digunakan harus sangat kuat.

## 7.6 Secure Storage and Computation

### Slide 5: Title

Title: Penyimpanan dan Komputasi Aman
Subtitle: Trade-off Keamanan dan Efisiensi

### Slide 6: Trade-off Keamanan dan Efisiensi

- Konsep trade-off antara keamanan dan efisiensi juga berlaku untuk penyimpanan dan komputasi.
- Sistem dapat memiliki enkripsi ringan dan cepat untuk data atau enkrpsi yang kuat.
- Jenis enkripsi tergantung dengan keperluan data

### Slide 7: Keperluan Enkripsi

- Data yang memiliki "umur" yang pendek, seperti data yang disimpan di memori, dapat menggunakan enkripsi yang ringan, memprioritaskan read-write speed.
- Data yang memiliki "umur" yang panjang, seperti film copyright, memerlukan enkripsi yang kuat.
- Data harus dienkripsi, terutama jika disimpan di 3rd party storage provider.

### Slide 8: Hardware Security Modules (HSMs)

- HSMs adalah perangkat fisik yang berfungsi sebagai "brankas" untuk menyimpan dan mengelola kunci digital.
- HSMs memberikan layanan kriptografi dan otentikasi yang kuat.
- HSMs dapat berupa kartu plug-in atau perangkat eksternal yang terhubung ke server jaringan.

## 7.7 The Security Players

### Slide 9: Title

Title: Pemain Keamanan
Subtitle: Peran dan Nickname dalam Sistem Keamanan

### Slide 10: Pemain Keamanan

- Deskripsi sistem keamanan dan partisipannya dapat membingungkan. Untuk memudahkan, pemain dalam sistem keamanan diberi nickname.
- Nickname adalah sebagai berikut
  - Alice, Bob, Carol, Dave: Pengguna dalam sistem (Legitimate Users)
  - Walter: Administrator sistem
  - Eve: Penyerang eveasdropping (menguping komunikasi)
  - Mallory: Penyerang yang mencoba mengubah data (Malicious Attacker)
  - Randy: Pengguna atau entitas yang secara tidak sengaja menyebabkan masalah keamanan (Accidental Attacker).
  - Imelda: Penyerang yang melakukan serangan Denial-of-Service (DoS) untuk mengganggu layanan sistem.


### Slide 11: Tipikal Serangan




### References

```plaintext
7.5 Secure Transmissions
Secure transmissions are required when data transfer is required between the
islands of security via the Internet. The model assumes a secure source environ-
ment and secure destination environment exist. The communication channel
between the secure environments is open or unsecure. To protect the information
to be transferred, it is encrypted whenever it is in an unsecure environment. The
primary approach is to encrypt the information whenever it is “outside™ of a secure
environment. The primary tool for secure communication is encryption. Many
aspects limit the security of an encryption system, such as key management, the
strength of the specific encryption algorithm used, the size of the key, and the time
and effort required to crack an encrypted message. Much of the security research
and security policy decisions are based on the time and effort required to crack an
encrypted message. When implementing a secure system, a trade-off decision
must be made between the security of the encrypted information (time and effort
to crack the cipher) and the efficiency of the system (time and effort to encrypt the
message). The trade-off is evaluated within certain boundary conditions, such as
the lifetime and value of the information. A message about a transaction occurring
tomorrow only needs to stay secured for 2 days, which limits the time and effort
that will be available to crack the cipher. An example of this might be a major dip-
lomatic announcement scheduled for the next day. It has a limited time value. In
contrast, another message with years of lifetime value offers ample time for very
significant effort to break the message. An example of this might be a detailed
description of a long-term investment for a new drug discovery and its trial posing
a competitive threat to other market players.
77 The Security Players 121
7.6 Secure Storage and Computation
The trade-offs between efficiency and security described for transmission also apply
to the storage and computation. A common solution for security and integrity check-
ing of networked storage environments is encrypted data file systems [10]. The
CESs (cryptographic file systems) are a significant performance burden. Using a
CFS is especially needed when the data storage is farmed out to untrusted storage
sub-providers [7]. A big difference is the wide range of storage lifetime. For storage
such as copyrighted movies on DVD, there is a longtime value (several months or
even years); however, for storage such as main memory, there is a short-time value
(perhaps microseconds). The emphasis in the main memory security should be on
read-write efficiency. A small loss of time here has a huge impact on the perfor-
mance of a computer system due to repeated operations.
Hence lighter and faster encryption schemes can be applied to data of ephemeral
value, such as being held in a system memory, which will be short lived. For long-
term data, companies such as financial institutions have invested in hardware secu-
rity modules (HSMs). A HSM is a physical computing device acting as a vault to
hold and manage digital keys for strong authentication and provides crypto process-
ing services. This can be a plug-in card or an external device, attached directly to a
network server. These HSMs are certified as per the internationally accepted stan-
dards, such as FIPS (Federal Information Processing Standard) in the USA to pro-
vide users with a security assurance.
7.7 The Security Players
As the previous sections demonstrate, the description of a secure system and its
participants can get confusing. A common procedure for describing the participants
in secure systems, scenarios, and security protocols is to use some nicknamed par-
ticipants. In various descriptions, key personnel will maintain the same role. For
example, person A will always represent the initiator or first participant in the given
scenario. Not every scenario has every type of role. In fact, most scenarios have only
a few of the roles. For convenience, the parties represented are given nicknames in
addition to fixed roles. Several different publications have used this nicknaming
technique when describing security systems and protocols [8, 11, 12]. Although
these participants do not need to be physical human beings, for this chapter we are
adding some virtual entities, as shown in Fig. 7.5. Security attacks at different layers
of computer system are shown below in Table 7.2.
Cloud Computing presents a case with different classes of users using the same
processes. That is, users requiring very high security are using the same operating
system as the users requiring low security and therefore gain the same access.
Also, the users requiring high security and the users requiring low security can run
the same applications thereby having passed the same access required to run the
application software. The implementation of typical real-world multilevel security
122 7 Cloud Computing and Information Security
/
|| Inside the building i “inside”
| the sceure environment
Fig. 7.5 Traditional computing security depends upon physical security
Table 7.2 Security attacks and challenges for digital computer system levels
Unauthorized
Unauthorized data or | observation and Denial-of-service
program changes copying (intentional attacks (intentional
(malicious by eavesdropping by Eve | by Imelda and
Mallory and and accidental leaks to | accidental by
accidental by Randy) |Randy) Randy)
Software | User Fake login, or Usually relies on lower | Encrypt or disguise
application indirect access [13] |levels of data [4]
implementation
Operating Fake login, low-level | In-memory
system (OS) | instruction [1] transactions
Virtual VM to VM Information leaks [5] | [4]
machine layer | communication [1]
VM)
Hypervisor
Tayer
Software From OS Encryption, security | Encrypt data
drivers handshake
BIOS/ Time and date Secure memory Authentication for
FW-based stamps [13] locations execution
system
management
layer
Hardware | CPU Information leaks Information leaks [15]
[1s1
Memory Information leaks [9, | [14]
cache/main 15]
RAM
Memory disk | Access privileges [9, | Access privileges
13]
7.8 Traditional vs. Internet Security Issues 123
(MLS) is too rigid for most resource sharing activates (such as the Internet) [16]
and completely inadequate to meet the Cloud Computing challenge. The players
described in this section have the same assignments in both traditional, Internet,
and Cloud environments.
7.8 Traditional vs. Internet Security Issues
The traditional approach to information security relied upon physical barriers. In
this case, there is a clear physical boundary of what is inside the security perimeter
and what is outside. The computing center access is available only to key personnel.
The hardware and network connectivity to the main computers are physically iden-
tified and can be checked for any taps. Individuals with a higher level of security
clearance, such as system administrators, can have special hardware access lines.
All of the individual users have a terminal in a controlled environment, such as in
their offices or a terminal room.
Humans and devices can both be controlled for monitored access and activity.
Devices to control access include card readers and key locks on doors. Human secu-
rity guards can be posted at key points. Cameras are the primary devices to monitor
activity. The most common human support for monitoring activity is the other
workers. They can see people they know and what they are doing. People can also
look for strangers by observing a person’s uniform or badge to determine whether
they seem to be doing an appropriate activity or not. The casual monitoring by
coworkers is not only effective at catching intruders; it is also a deterrent to causal
attempts at security breaches. This physical barrier provides two natural increases in
security: limit repeated attempts and time available to perform a breach. In the case
of repeated attempts, it becomes obvious to the most casual observer when the same
unauthorized person tries to get in multiple times. And it is also obvious when a
stranger keeps carrying files or disks out the door. As for the time, it takes minutes
to gain access or gather information as the stranger walks around looking at com-
puter screens on workers’ desks.
As is shown in Fig. 7.6, the definition of “inside” the security perimeter and
“outside” the perimeter is clear. When Alice wishes to get information to Bob, she
can just walk over and stay inside the secure perimeter. Eavesdropping by Eve
requires a much greater sophistication than the effort to secure the communication.
For example, Alice may post documents on her bulletin board facing a clear window
open to Eve’s apartment across the street, providing her a way to view remotely.
Even in the traditional environment information, security leaks occur. Phone con-
versations, documents, and removable storage media did provide opportunities for
information from within the secure environment to get to unauthorized individuals.
However, usually enforcing policies based upon the physical boundary was suffi-
cient to provide information security.
The Internet created a new issue — that is, connecting secure islands of information
via open channels. The computing center with large computing and storage resources
has controlled access and activities. This creates a large island of security where
124 7 Cloud Computing and Information Security
Terminals and computers that have “access control” are lte islands of “inside”™
sceure environments connected by encrypted messages on the open information highway
‘entral computing
s “inside” a
ccure environment
Fig. 7.6 Information security on the Internet
major resources are still controlled and monitored with humans and devices.
However, now system operators have access via uncontrolled hardware lines, identi-
cal to regular user access lines. Unlike the traditional case, there is no casual moni-
toring by coworkers. As has been said in the cartoon world, “On Internet nobody
knows your real identity.” Also, the Internet provides an intruder with unlimited
tries to gain access. After an intruder has failed to gain access, the failed attempts
cannot be attached to the intruder. Each attempt may appear as a first attempt as [P
addresses can be spoofed. Time to attempt repeated access is greatly reduced.
Procedures to stop these intruders impact legitimate users. For example, one can
stop the high number of repeated access attacks by limiting the number of false
attempts by locking an account after some number of false attempts. However, this
can prevent a legitimate user from accessing her account. This can lead to another
form of security attack called denial of service (DOS). The idea here is not to gain
access but to prevent legitimate users” access by hitting the access attempts’ limit
and thus locking out (or denying service) to legitimate users.
The value of resource sharing via a network for a collaborative work environ-
ment is clear and established. One approach to access control to the collaborative
environment is based upon people tagging [16]. On the Web, or any shared storage,
the physical monitoring of access and activity is greatly reduced. In fact, the case of
casual monitoring is completely eliminated. The integrity of shared data can be veri-
fied with digital signatures [7]. Integrity checking is needed when access is difficult
to control. As shown in Fig. 7.4, the adversaries have access to the open channel. In
addition to the open channel, the island of security concept has a time component to
the isolation of a resource. A computer connecting to the central resource could be
a shared resource such as a computer in a terminal lab. The next user sits down and
has access to information that should have been protected but hasn’t been erased by
79 Security Using Encryption Keys 125
the previous user. The concept of attacking persistence in the main memory [17] is
to read memory containing passwords or other secret data that is not consciously
erased between users.
```
