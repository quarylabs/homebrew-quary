# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.126/quary-macos-x86_64-gnu.zip"
    sha256 "7b9f8592f94a71704cb404a1457556efca5b2207fce122b2fb63db1ff63c6e78"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.126/quary-macos-aarch64-gnu.zip"
    sha256 "72371d3913ba5743b72270e25ec8b463bfc2d20b54a6460276f3de94dcc94a1f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.126/quary-linux-x86_64-gnu.zip"
    sha256 "5da4015d8f22a502e253b905f39f1ce3b5f396da27286fc49c912c6949becbad"
  end

  def install
    bin.install "quary" => "quary"
  end
end
