class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.37/autogit-v1.0.37-aarch64-apple-darwin.tar.gz"
      sha256 "aa55b4c93818b746cb7749a8f042e8ae2e0d15f598081081f64deffd76c75c8a"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
