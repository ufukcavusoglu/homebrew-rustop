class Rustop < Formula
  desc "htop-like TUI system monitor written in Rust"
  homepage "https://github.com/ufukcavusoglu/rustop"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ufukcavusoglu/rustop/releases/download/v0.1.1/rustop-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_ARM"
    else
      url "https://github.com/ufukcavusoglu/rustop/releases/download/v0.1.1/rustop-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_SHA256_INTEL"
    end
  end

  def install
    bin.install "rustop"
  end
  
  test do
    assert_predicate bin/"rustop", :exist?
  end

end

