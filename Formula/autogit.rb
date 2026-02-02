class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.3.2/autogit-v1.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "1d4ebf42876460f552d7796cea9a9d65b6fd5cdc94ce6a4ce488a52cbb64cf3b"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
