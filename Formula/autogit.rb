class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.4/autogit-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "5959972539772499b02632c975ed70647f80575b36b0e580efaec40f64cc181d"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
