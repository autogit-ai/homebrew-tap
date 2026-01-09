class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.46/autogit-v1.0.46-aarch64-apple-darwin.tar.gz"
      sha256 "e9b213a51dfeba9284985e064dd2c8f19077a94c417a634f820f3ba482a681e8"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
