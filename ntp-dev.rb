require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p475.tar.gz"
  version "4.2.7p475"
  homepage "http://www.ntp.org/index.html"
  sha1 "537ebf04997f471ee5ae33b5f5c56dc5a909df81"

  def install
    args = ["--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-silent-rules"]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system "false"
  end
end
