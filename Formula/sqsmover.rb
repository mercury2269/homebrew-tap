# This file was generated by GoReleaser. DO NOT EDIT.
class Sqsmover < Formula
  desc "AWS SQS Message mover."
  homepage "https://github.com/mercury2269/sqsmover"
  version "0.3.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mercury2269/sqsmover/releases/download/v0.3.14/sqsmover_Darwin_x86_64.tar.gz"
    sha256 "44bf483f81bd59667215d9b8327a560491b82a43dc39d446d8aa9f48234bb97b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mercury2269/sqsmover/releases/download/v0.3.14/sqsmover_Linux_x86_64.tar.gz"
      sha256 "f152e4d884c8a89c492d44e8a3266b164725fe05f261d9782e0104b30d9a2310"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mercury2269/sqsmover/releases/download/v0.3.14/sqsmover_Linux_arm64.tar.gz"
        sha256 "cc03580e381e8674e154d1cf0128eb039eab82f38faed80b9cc59913eba3c282"
      else
        url "https://github.com/mercury2269/sqsmover/releases/download/v0.3.14/sqsmover_Linux_armv6.tar.gz"
        sha256 "17446be2d4af4b0a422cf527403909d66436f781c73c202b556d097a3ce0b71d"
      end
    end
  end

  def install
    bin.install "sqsmover"
  end

  test do
    system "#{bin}/sqsmover -v"
  end
end
