class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v0.1.2/autogit-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "80f680c1e53ad57c0df8c00a0471449a0383c1d91607574e31c7c50238149ea3"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
