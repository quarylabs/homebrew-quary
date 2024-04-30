# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.115/quary-0.0.115-quary-macos-x86_64-gnu.zip"
    sha256 "decab27ac0e24905f277cd541ccf9ff3f1f6ebb9820be18756df44d9a4f2d162"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.115/quary-0.0.115-quary-macos-aarch64-gnu.zip"
    sha256 "531456f611c0e810584be7e07e0e33f5ab4ebee070ac383beb6dcddc138b8b2c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.115/quary-0.0.115-quary-linux-x86_64-gnu.zip"
    sha256 "42e3456c66a0eb84acb00d88d6fda59eefc8d8d9545d8d3bbd75ce41d47405ea"
  end

  def install
    bin.install "quary" => "quary"
  end
end
