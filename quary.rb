# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.99/quary-0.0.99-quary-macos-x86_64-gnu.zip"
    sha256 "644e4ef5e316537c3c5fee6e41683492ed7af02d4dee8be4becaed5cb3ab4c0d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.99/quary-0.0.99-quary-macos-aarch64-gnu.zip"
    sha256 "4b6966fc4a007b1acfff631f83b0f4cd79d370a24b00d26c940eacb1e3a24b93"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.99/quary-0.0.99-quary-linux-x86_64-gnu.zip"
    sha256 "bc09eb49c378c26e711cb0e47c1c73556c3a0cf15b97ae82233a31f87403e0fe"
  end

  def install
    bin.install "quary" => "quary"
  end
end
