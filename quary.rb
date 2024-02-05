# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.79/quary-0.0.79-quary-macos-x86_64-gnu.zip"
    sha256 "94e03fc1f8b657a907c21be098e7905b69ee4899cc278b200155b9346a319e1b"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.79/quary-0.0.79-quary-macos-aarch64-gnu.zip"
    sha256 "0676781282a14310af743aac2c40ea162894d0d35d42cb080fd959b90d914c3f"
  end
  def install
    bin.install "quary-0.0.79" => "quary"
  end
end
