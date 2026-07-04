class DltTui < Formula
  desc "Fast, keyboard-centric TUI viewer for Automotive DLT files"
  homepage "https://github.com/tkmsikd/dlt-tui"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.1.0/dlt-tui-aarch64-apple-darwin.tar.gz"
      sha256 "bfb56b79d132ff450950a250e55224228f31fbc20d4c54bb551b63285440ec20"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.1.0/dlt-tui-x86_64-apple-darwin.tar.gz"
      sha256 "700c3e9e32c2ce8608107ad22d807308d5402f6bf09e834f8c93e703bc8abcc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.1.0/dlt-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f3c0230049effd3f10c73c610541bec5799005f2bf07f27e89910e2ddf08031"
    else
      url "https://github.com/tkmsikd/dlt-tui/releases/download/v1.1.0/dlt-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c498051274cf51e887544d6a965340baae5b90a2fcef8b3af3cc28f1b38ca77e"
    end
  end

  def install
    bin.install "dlt-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dlt-tui --version")
  end
end
