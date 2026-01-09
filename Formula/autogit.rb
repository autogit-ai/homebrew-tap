class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.46/autogit-v1.0.46-aarch64-apple-darwin.tar.gz"
      sha256 "9c394d89fd645e0993a10d7628723a411489006818c4ecb3343c5c360b499916"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
