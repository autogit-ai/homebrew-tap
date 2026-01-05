class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.25/autogit-v1.0.25-aarch64-apple-darwin.tar.gz"
      sha256 "117de6cde30339c42fa993a365c982cf422610f6043bd481c670dfe83c605979"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
