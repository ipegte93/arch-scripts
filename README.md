# arch-scripts
## note
### arch base
```bash
#파티션 나누기
  $lsblk #현재 파티션 구조 보기
  $fdisk /dev/sdX #파티션 분할 할 때 사용
    'n' -> new
    'p' -> see partitions
    'w' -> write and save
  $ls /sys/firmware/efi/efivars -> 존재하면 boot 파티션 만들기
    'Boot 파티션' -> 1G #부트로더
    'Root 파티션' -> 나머지 #운영체제
#파티션 포맷
  $mkfs.ext4 /dev/sd** <-'Root'
  $mkfs.fat -F32 /ev/sd** <- 'Boot'
#파티션 마운트
  $mount /dev/sdX* /mnt <-'Root' #루트 파티션 마운트
  $mkdir /mnt/boot
  $mount dev/sdX* /mnt/boot <-'Boot'
#아치 설치
  $pacstrap /mnt base base-devel linux linux-firmware nano git man-db man-pages # 아치 설치 및 다른 프로그램 설치
  $genfstab -U /mnt >> /mnt/etc/fstab #마운트 구조 저장
#아치 설정
  $arch-chroot /mnt #아치 접속
  #시간 설정
    $ln -sf /usr/share/zoneinfo/Asia/Seoul
    $ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
    $hwclock --systohc #Hardware Clock --System To Hardware Clock
    $timedatectl set-local-rtc 1 #윈도우와 시간 충돌 해결
  #언어 설정
    $nano /etc/locale.gen
      -> 쓸 언어 '#' 지우기 
    $nano /etc/locale.conf
      -> 'LANG=en_US.UTF-8'
    $locale-gen
  #유저 설정
    $nano /etc/hostname
      -> 'arch'
    $nano /etc/hosts
      -> '127.0.0.1  localhost'
      -> '::1  localhost'
      -> '127.0.0.1   arch.localdomain arch'
    $nano /etc/sudoers
      -> wheel 앞에 '#' 지우기
    $passwd #root 계정 비밀번호 설정
    $useradd -mG wheel '아이디'
    $passwd '아이디' #사용자 계정 비밀번호 설정
  #네트워크 관리자
    $pacman -S networkmanager
    $systemctl enable NetworkManager.service
  #부트로더
    $pacman -S grub os-prober efibootmgr
    (efi 시스템이 아닐 때)
    $grub-install --target=i386-pc /dev/sdX <- 'Root'
    (efi 시스템일 때)
    $grub-install--efi-directory=/boot --bootloader-id=GRUB
  #부트로더 설정
    $os-prober
    $grub-mkconfig -o /boot/grub/grub.cfg
```
