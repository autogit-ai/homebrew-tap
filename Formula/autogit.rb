class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.3.1/autogit-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "562eb3a5efe63a2e0e477ad51422138cbcfe521c9ed061ea3b02c3d30fc6051d"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
