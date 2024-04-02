# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.105/quary-0.0.105-quary-macos-x86_64-gnu.zip"
    sha256 "6235e14959d867423e974d7ec4909f5009844af2b7f4c1fd2157dab8bea9e106"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.105/quary-0.0.105-quary-macos-aarch64-gnu.zip"
    sha256 "986eb9c3661fab3322750c4646f327465566aa091d61139b5552b22f2be7d3c2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.105/quary-0.0.105-quary-linux-x86_64-gnu.zip"
    sha256 "9a010787c586ebb0a466dbe10c482a8a86c43ac480dce216a224889460fc182d"
  end

  def install
    bin.install "quary" => "quary"
  end
end
