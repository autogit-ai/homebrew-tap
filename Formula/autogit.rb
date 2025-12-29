class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.1/autogit-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "9d9485b3715938510d0262cb5be12c2059dede6a000b0241b8d1df38672b9b01"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
