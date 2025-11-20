class SimpleChatgpt < Formula
  desc "Simple command-line tool to use ChatGPT Desktop from your Mac terminal"
  homepage "https://github.com/paolofulgoni/simple-chatgpt"
  license "MIT"
  url "https://github.com/paolofulgoni/simple-chatgpt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f45c65f38c4876e996ced1cb1e0638458ad4f30899db4c4aa881d756d291e42e"
  version "0.1.0"
  head "https://github.com/paolofulgoni/simple-chatgpt.git", branch: "main"

  def install
    bin.install "simple-chatgpt"
    pkgshare.install "share/simple-chatgpt/simple-chatgpt.shortcut"
  end

  def caveats
    <<~EOS
      Import the Shortcut into the Shortcuts app:
        open "#{pkgshare}/simple-chatgpt.shortcut"
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/simple-chatgpt -h")
  end
end
