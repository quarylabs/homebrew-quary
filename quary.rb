# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.108/quary-0.0.108-quary-macos-x86_64-gnu.zip"
    sha256 "a5fdb8a51ac0d3a2fdada1ca85a2bd486667adaf8a8a0d6ed614d65ed688cf88"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.108/quary-0.0.108-quary-macos-aarch64-gnu.zip"
    sha256 "e9e17b8f043253b0d051fe6b30c800abe9ed368083c7592a5c7a52e50ace57ac"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.108/quary-0.0.108-quary-linux-x86_64-gnu.zip"
    sha256 "4cf679e16c747f460f3580ea50fc4f7358dcf98ec7704ead99278721ce380501"
  end

  def install
    bin.install "quary" => "quary"
  end
end
