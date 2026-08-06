class DltTui < Formula
  desc "Fast, keyboard-centric TUI viewer for Automotive DLT files"
  homepage "https://github.com/tkmsikd/dlt-tui"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.2.0/dlt-tui-aarch64-apple-darwin.tar.gz"
      sha256 "e332fbf4b5177d43cc33220ce2e2b93514623823533c30fb276d648a8c2f95ac"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.2.0/dlt-tui-x86_64-apple-darwin.tar.gz"
      sha256 "8523717188e8cf567cd17916a630e33167683614f66beaa3dedc3e2abc6758fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.2.0/dlt-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0cfbd2c8175942d01c8a8e5aacac9ad5513858260de61f3b840e2009e2308781"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.2.0/dlt-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e00302d3a93353d91949d2f4ad4f25b282cd33e64cb3e774aac9191a98834289"
    end
  end

  def install
    bin.install "dlt-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dlt-tui --version")
  end
end
