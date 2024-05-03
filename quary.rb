# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.116/quary-0.0.116-quary-macos-x86_64-gnu.zip"
    sha256 "c627338eb0e43cfe410c0c1d15113f8cc5447dd5c76d6abca78e6e68eed28b76"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.116/quary-0.0.116-quary-macos-aarch64-gnu.zip"
    sha256 "0c1bbb1413513c5168ad3e24a22cd6fcfa6a13f62ae3beac3114c914754882d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.116/quary-0.0.116-quary-linux-x86_64-gnu.zip"
    sha256 "d6adcc2578c0d4010b47ffa5714d333017c9768991487b99a1c88327a2322815"
  end

  def install
    bin.install "quary" => "quary"
  end
end
