# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.77/quary-0.0.77-quary-macos-x86_64-gnu.zip"
    sha256 "3e295f8de345f7c997f4b33026d34dad5e3ecabe3a63ce76cad3074f24ca7675"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.77/quary-0.0.77-quary-macos-aarch64-gnu.zip"
    sha256 "795ec9ec24374ff6c73a92b26aa72408f06498b3fb4c00baea7ebd050f4d7c7a"
  end
  def install
    bin.install "quary-0.0.77" => "quary"
  end
end
