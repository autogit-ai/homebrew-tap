class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.27/autogit-v1.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "e42dcef889874b86824983e2fd4c607e6db5b3c5f08e9c513033eb665fa09d6f"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
