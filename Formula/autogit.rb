class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.43/autogit-v1.0.43-aarch64-apple-darwin.tar.gz"
      sha256 "26af48ef0f69f9d8b1d7c47599e94e13a6b1153aa821c0b69623d1acf0add415"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
