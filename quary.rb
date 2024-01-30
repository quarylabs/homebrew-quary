# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.75/quary-0.0.75-quary-macos-x86_64-gnu.zip"
    sha256 "e1e22f4382ce60f4ad4b1a7e8629e0587b86de4719c174c724d84aa44b364380"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.75/quary-0.0.75-quary-macos-aarch64-gnu.zip"
    sha256 "baa3701f28855b0b426849fd7e570d45be5a4136c43f552e972d107b8af695f8"
  end
  def install
    bin.install "quary-0.0.75" => "quary"
  end
end
