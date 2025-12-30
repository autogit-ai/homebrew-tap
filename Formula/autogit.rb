class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.3/autogit-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "b2a1d72f6a02620b78263e3b8e95547d6ef466293300280ba22ddcde6991ae51"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
