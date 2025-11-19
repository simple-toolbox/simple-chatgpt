class SimpleChatgpt < Formula
  desc "Simple macOS command-line access to ChatGPT using Shortcuts"
  homepage "https://github.com/paolofulgoni/simple-chatgpt"
  license "MIT"
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
