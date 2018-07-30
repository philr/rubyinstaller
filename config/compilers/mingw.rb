module DevKitInstaller

  COMPILERS['mingw-32-4.6.2'] =
    OpenStruct.new(
      :version => 'mingw-32-4.6.2',
      :programs => [ :gcc, :cpp, :'g++' ],
      :program_prefix => nil,
      :url_1 => 'https://downloads.sourceforge.net/mingw/Base/gcc/Version4/gcc-4.6.2-1',
      :url_2 => 'https://downloads.sourceforge.net/mingw/Base/gmp/gmp-5.0.1-1',
      :url_3 => 'https://downloads.sourceforge.net/mingw/Base/mpc/mpc-0.8.1-1',
      :url_4 => 'https://downloads.sourceforge.net/mingw/Base/mpfr/mpfr-2.4.1-1',
      :url_5 => 'https://downloads.sourceforge.net/mingw/Base/binutils/binutils-2.24',
      :url_6 => 'https://downloads.sourceforge.net/mingw/Base/mingwrt/mingwrt-3.20',
      :url_7 => 'https://downloads.sourceforge.net/mingw/Base/w32api/w32api-3.17',
      :url_8 => 'https://downloads.sourceforge.net/mingw/Extension/autoconf/autoconf2.5/autoconf2.5.268-1',
      :url_9 => 'https://downloads.sourceforge.net/mingw/Extension/autoconf/wrapper/autoconf-10-1',
      :url_10 => 'https://downloads.sourceforge.net/mingw/Extension/automake/automake1.11-1.11-1',
      :url_11 => 'https://downloads.sourceforge.net/mingw/Extension/automake/wrapper/automake-4-1',
      :url_12 => 'https://downloads.sourceforge.net/mingw/Extension/gdb/GDB-7.5',
      :url_13 => 'https://downloads.sourceforge.net/mingw/Extension/expat/expat-2.0.1-1',
      :url_14 => 'https://downloads.sourceforge.net/mingw/Extension/libtool/libtool-2.4-1',
      :url_15 => 'https://downloads.sourceforge.net/mingw/Extension/bsdtar/basic-bsdtar-2.8.3-1',
      :url_16 => 'https://downloads.sourceforge.net/mingw/Extension/libarchive/libarchive-2.8.3-1',
      :url_17 => 'https://downloads.sourceforge.net/mingw/Extension/bzip2/bzip2-1.0.5-2',
      :url_18 => 'https://downloads.sourceforge.net/mingw/Extension/xz/xz-4.999.9beta_20100401-1',
      :url_19 => 'https://downloads.sourceforge.net/mingw/Base/gettext/gettext-0.18.1.1-2',
      :url_20 => 'https://downloads.sourceforge.net/mingw/Base/libiconv/libiconf-1.14-2',
      :url_21 => 'https://downloads.sourceforge.net/mingw/Base/zlib/zlib-1.2.8',
      :url_22 => 'https://downloads.sourceforge.net/gnuwin32',
      :target => 'sandbox/devkit/mingw',
      :files => {
        :url_1 => [
          'gcc-core-4.6.2-1-mingw32-bin.tar.lzma',
          'gcc-c++-4.6.2-1-mingw32-bin.tar.lzma',
          'libssp-4.6.2-1-mingw32-dll-0.tar.lzma',
          'libgcc-4.6.2-1-mingw32-dll-1.tar.lzma',
          'libstdc++-4.6.2-1-mingw32-dll-6.tar.lzma'
        ],
        :url_2 => [
          'libgmp-5.0.1-1-mingw32-dll-10.tar.lzma'
        ],
        :url_3 => [
          'libmpc-0.8.1-1-mingw32-dll-2.tar.lzma'
        ],
        :url_4 => [
          'libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma'
        ],
        :url_5 => [
          'binutils-2.24-1-mingw32-bin.tar.lzma'
        ],
        :url_6 => [
          'mingwrt-3.20-2-mingw32-dev.tar.lzma',
          'mingwrt-3.20-2-mingw32-dll.tar.lzma'
        ],
        :url_7 => [
          'w32api-3.17-2-mingw32-dev.tar.lzma'
        ],
        :url_8 => [
          'autoconf2.5-2.68-1-mingw32-bin.tar.lzma'
        ],
        :url_9 => [
          'autoconf-10-1-mingw32-bin.tar.lzma'
        ],
        :url_10 => [
          'automake1.11-1.11.1-1-mingw32-bin.tar.lzma'
        ],
        :url_11 => [
          'automake-4-1-mingw32-bin.tar.lzma'
        ],
        :url_12 => [
          'gdb-7.5-1-mingw32-bin.tar.lzma'
        ],
        :url_13 => [
          'libexpat-2.0.1-1-mingw32-dll-1.tar.gz'
        ],
        :url_14 => [
          'libtool-2.4-1-mingw32-bin.tar.lzma'
        ],
        :url_15 => [
          'basicbsdtar-2.8.3-1-mingw32-bin.tar.bz2'
        ],
        :url_16 => [
          'bsdcpio-2.8.3-1-mingw32-bin.tar.bz2',
          'libarchive-2.8.3-1-mingw32-dll-2.tar.bz2'
        ],
        :url_17 => [
          'libbz2-1.0.5-2-mingw32-dll-2.tar.gz'
        ],
        :url_18 => [
          'liblzma-4.999.9beta_20100401-1-mingw32-dll-1.tar.bz2'
        ],
        :url_19 => [
          'libintl-0.18.1.1-2-mingw32-dll-8.tar.lzma'
        ],
        :url_20 => [
          'libiconv-1.14-2-mingw32-dll-2.tar.lzma'
        ],
        :url_21 => [
          'libz-1.2.8-1-mingw32-dll-1.tar.gz'
        ],
        :url_22 => [
          'which-2.20-bin.zip'
        ],
      }
    )


  COMPILERS['mingw-32-3.4.5'] =
    OpenStruct.new(
      :version => 'mingw-32-3.4.5',
      :programs => [ :gcc, :cpp, :'g++' ],
      :program_prefix => nil,
      :url_1 => 'http://downloads.sourceforge.net/mingw',
      :target => 'sandbox/devkit/mingw',
      :files => {
        :url_1 => [
          'mingwrt-3.15.2-mingw32-dll.tar.gz',
          'mingwrt-3.15.2-mingw32-dev.tar.gz',
          'w32api-3.13-mingw32-dev.tar.gz',
          'binutils-2.19.1-mingw32-bin.tar.gz',
          'gcc-core-3.4.5-20060117-3.tar.gz',
          'gcc-g++-3.4.5-20060117-3.tar.gz',
          'autoconf2.5-2.68-1-mingw32-bin.tar.lzma',
          'autoconf-10-1-mingw32-bin.tar.lzma',
          'automake1.11-1.11.1-1-mingw32-bin.tar.lzma',
          'automake-4-1-mingw32-bin.tar.lzma',
          'gdb-6.8-mingw-3.tar.bz2'
        ]
      }
    )

end
