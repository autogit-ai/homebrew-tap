class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.28/autogit-v1.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "e32db29db8ec3257922a591d6c7bcd250e37a6b73f02e087e5fcbccbdcfa797d"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
