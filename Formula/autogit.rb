class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.38/autogit-v1.0.38-aarch64-apple-darwin.tar.gz"
      sha256 "3d098ed2c6020a33c5f9b82408e5fe2f221ceb09807e712ae64e90cdc29a2074"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
