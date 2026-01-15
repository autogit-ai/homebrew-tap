class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.4/autogit-v1.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "5c166570a5a63dd8e0a2f7d99c6cec34d795f497940c997d002bd9c2e9cd5c3e"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
