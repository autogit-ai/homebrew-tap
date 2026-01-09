class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.45"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.45/autogit-v1.0.45-aarch64-apple-darwin.tar.gz"
      sha256 "307d185b72db9cdc0103949eca6ae81a12f806c262f006509745057b3a6b560f"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
