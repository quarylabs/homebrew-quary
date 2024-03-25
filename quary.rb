# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.101/quary-0.0.101-quary-macos-x86_64-gnu.zip"
    sha256 "618dcacca6110db8edfe671e7200e61cc3ae80a4cb074bc9b13ab14c7e0421d8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.101/quary-0.0.101-quary-macos-aarch64-gnu.zip"
    sha256 "6b8b2ef7e42248c657a9db1ff4d3e60101f2679e35d3ec168f6cba29e18dec18"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.101/quary-0.0.101-quary-linux-x86_64-gnu.zip"
    sha256 "011816d650228f54117d9c87f907364cc97818cab3f9c5211e8a2422db822286"
  end

  def install
    bin.install "quary" => "quary"
  end
end
