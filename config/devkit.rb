require 'ostruct'

module DevKitInstaller
  DEFAULT_VERSION = 'mingw64-32-4.7.2'
  COMPILERS = {}
end

# load DevKit compiler definitions
Dir.glob("#{RubyInstaller::ROOT}/config/compilers/*.rb").sort.each do |compiler|
  puts "Loading #{File.basename(compiler)}" if Rake.application.options.trace
  load compiler
end

module DevKitInstaller

  DevKit = OpenStruct.new(
    :installer_guid => '{D25478D4-72AE-40BF-829F-2C8CE49E2EE8}',
    :install_script => 'resources/devkit/dk.rb',
    :install_script_erb => 'resources/devkit/dk.rb.erb',
    :inno_script => 'resources/devkit/devkit.iss',
    :inno_config => 'resources/devkit/dk_config.iss',
    :inno_config_erb => 'resources/devkit/dk_config.iss.erb',
    :setup_scripts => [
      'devkitvars.bat',
      'devkitvars.ps1',
      'dk.rb'
    ]
  )

  MSYS = OpenStruct.new(
    :version => '1.0.17',
    :url_1 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/msys-core/msys-1.0.17-1',
    :url_2 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/coreutils/coreutils-5.97-3',
    :url_3 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/libiconv/libiconv-1.14-1',
    :url_4 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/gettext/gettext-0.18.1.1-1',
    :url_5 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/termcap/termcap-0.20050421_1-2',
    :url_6 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/make/make-3.81-3',
    :url_7 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/perl/perl-5.8.8-1',
    :url_8 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/zlib/zlib-1.2.3-1',
    :url_9 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/gdbm/gdbm-1.8.3-3',
    :url_10 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/crypt/crypt-1.1_1-3',
    :url_11 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/bash/bash-3.1.23-1',
    :url_12 => 'https://downloads.sourceforge.net/mingw/MSYS/Contributed/mksh/mksh-40.0.0c',
    :url_13 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/regex/regex-1.20090805-2',
    :url_14 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/m4/m4-1.4.14-1',
    :url_15 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/bison/bison-2.4.2-1',
    :url_16 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/flex/flex-2.5.35-2',
    :url_17 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/findutils/findutils-4.4.2-2',
    :url_18 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/sed/sed-4.2.1-2',
    :url_19 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/gawk/gawk-3.1.7-2',
    :url_20 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/grep/grep-2.5.4-2',
    :url_21 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/less/less-436-2',
    :url_22 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/diffutils/diffutils-2.8.7.20071206cvs-3',
    :url_23 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/texinfo/texinfo-4.13a-2',
    :url_24 => 'https://downloads.sourceforge.net/mingw/MSYS/Base/file/file-5.04-1',
    :url_25 => 'https://downloads.sourceforge.net/mingw/MSYS/Extension/mintty/mintty-1.0.3',
    :target => 'sandbox/devkit',
    :files => {
      :url_1 => [
        'msysCORE-1.0.17-1-msys-1.0.17-bin.tar.lzma',
        'msysCORE-1.0.17-1-msys-1.0.17-ext.tar.lzma'
      ],
      :url_2 => [
        'coreutils-5.97-3-msys-1.0.13-bin.tar.lzma',
        'coreutils-5.97-3-msys-1.0.13-ext.tar.lzma'
      ],
      :url_3 => [
        'libiconv-1.14-1-msys-1.0.17-dll-2.tar.lzma'
      ],
      :url_4 => [
        'libintl-0.18.1.1-1-msys-1.0.17-dll-8.tar.lzma'
      ],
      :url_5 => [
        'libtermcap-0.20050421_1-2-msys-1.0.13-dll-0.tar.lzma',
        'termcap-0.20050421_1-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_6 => [
        'make-3.81-3-msys-1.0.13-bin.tar.lzma'
      ],
      :url_7 => [
        'perl-5.8.8-1-msys-1.0.17-bin.tar.lzma'
      ],
      :url_8 => [
        'zlib-1.2.3-2-msys-1.0.13-dll.tar.lzma'
      ],
      :url_9 => [
        'libgdbm-1.8.3-3-msys-1.0.13-dll-3.tar.lzma'
      ],
      :url_10 => [
        'libcrypt-1.1_1-3-msys-1.0.13-dll-0.tar.lzma',
        'crypt-1.1_1-3-msys-1.0.13-bin.tar.lzma'
      ],
      :url_11 => [
        'bash-3.1.23-1-msys-1.0.18-bin.tar.xz'
      ],
      :url_12 => [
        'mksh-40.0.0c-1-msys-1.0.17-bin.tar.lzma'
      ],
      :url_13 => [
        'libregex-1.20090805-2-msys-1.0.13-dll-1.tar.lzma'
      ],
      :url_14 => [
        'm4-1.4.14-1-msys-1.0.13-bin.tar.lzma'
      ],
      :url_15 => [
        'bison-2.4.2-1-msys-1.0.13-bin.tar.lzma'
      ],
      :url_16 => [
        'flex-2.5.35-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_17 => [
        'findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_18 => [
        'sed-4.2.1-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_19 => [
        'gawk-3.1.7-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_20 => [
        'grep-2.5.4-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_21 => [
        'less-436-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_22 => [
        'diffutils-2.8.7.20071206cvs-3-msys-1.0.13-bin.tar.lzma'
      ],
      :url_23 => [
        'texinfo-4.13a-2-msys-1.0.13-bin.tar.lzma'
      ],
      :url_24 => [
        'libmagic-5.04-1-msys-1.0.13-dll-1.tar.lzma',
        'file-5.04-1-msys-1.0.13-bin.tar.lzma'
      ],
      :url_25 => [
        'mintty-1.0.3-1-msys-1.0.17-bin.tar.lzma'
      ],
    }
  )

end
