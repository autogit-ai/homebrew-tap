class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v0.1.2/autogit-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
