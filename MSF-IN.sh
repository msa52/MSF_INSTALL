echo INSTALL METASPLOIT ON AONDROID 2020
apt update
apt install -y libiconv zlib autoconf bison clang coreutils curl findutils git apr apr-util libffi libgmp libpcap postgresql readline libsqlite openssl libtool libxml2 libxslt ncurses pkg-config wget make ruby libgrpc termux-tools ncurses-utils ncurses unzip zip tar termux-elf-cleaner

curl -LO https://github.com/rapid7/metasploit-framework/archive/5.0.71.zip
chmod +x metasploit-framework-5.0.71.zip
unzip metasploit-framework-5.0.71.zip
cd metasploit-framework-5.0.71
gem update --system
bundle update --bundler
bundle install -j5
gem install nokogiri -v  1.10.7  -- --use-system-libraries
gem install nokogiri -- \
    --use-system-libraries \
    --with-xml2-dir=/path/to/dir \
    --with-xslt-dir=/path/to/dir
bundle install
echo NOW YOU CAN RUN THE  METASPLOIT WITH COMMAND msfconsole OR ./msfconsole
