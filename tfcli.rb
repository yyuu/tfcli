require 'formula'

class Tfcli < Formula
  VERSION = '0.0.1'
  homepage 'https://github.com/yyuu/tfcli'
  url 'https://github.com/yyuu/tfcli.git', tag: "v#{VERSION}"
  head 'https://github.com/yyuu/tfcli.git', branch: "main"

  depends_on "bash"
  depends_on "bats-core" => [:build, :test]
  depends_on "coreutils" => :recommended
  depends_on "jq"

  def install
    if build.head?
      system "make PREFIX=#{prefix} VERSION=HEAD install"
    else
      system "make PREFIX=#{prefix} VERSION=#{VERSION} install"
    end
  end

  def caveats
    <<~EOS
      tfcli provides command line completion functionality for bash/zsh.
      you can enable it by adding following in your shell configurations.

        if command -v tfc 1>/dev/null 2>&1; then
          eval "$(tfc init)"
        fi
    EOS
  end
end
