class Rustop < Formula
  desc "htop-like TUI system monitor written in Rust"
  homepage "https://github.com/ufukcavusoglu/rustop"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ufukcavusoglu/rustop/releases/download/v0.1.1/rustop-aarch64-apple-darwin.tar.gz"
      sha256 "a35d892422c472820c6a91473941f2580a26e7c31d5825be2caf4b7a1d84d577"
    else
      url "https://github.com/ufukcavusoglu/rustop/releases/download/v0.1.1/rustop-x86_64-apple-darwin.tar.gz"
      sha256 "a4d4a0a344de73c0b754d9b9f826aa70cfc926b80e3412d49f4d7fdff295d8a0"
    end
  end

  def install
    bin.install "rustop"
  end

  test do
    assert_predicate bin/"rustop", :exist?
  end
end

