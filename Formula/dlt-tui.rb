class DltTui < Formula
  desc "Fast, keyboard-centric TUI viewer for Automotive DLT files"
  homepage "https://github.com/tkmsikd/dlt-tui"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.3.0/dlt-tui-aarch64-apple-darwin.tar.gz"
      sha256 "dba91d4a100ae100528190b09e879cb9719461a73c242e51df2e278397ea15ff"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.3.0/dlt-tui-x86_64-apple-darwin.tar.gz"
      sha256 "e0c01014a8451082dc53d8acb54bf800013cfbaf90ef039d7ac63fd0067b659e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.3.0/dlt-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98a89f88af46c8e1d45933bea625bec44dc0e5be3575973db8a18d8e7cd4093d"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.3.0/dlt-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7076b8cd2b7aabcb9c27fb9cf8e8107502a0301ed360e0c22e5aff3c6991adfb"
    end
  end

  def install
    bin.install "dlt-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dlt-tui --version")
  end
end
