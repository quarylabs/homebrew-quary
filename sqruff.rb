# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "972ffe3549d210db54ee1ddb0bb11e83f797bc925f60e34f41b52a0fbe718b0f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "36bec96b6f0dd3162e01f5ffcf768d86015f564bb1d8555ccc14e415b9737a23"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "6fa7b4e8d04eb2e0d0a08579d819df41d08f0b0d0cae669a16d3adb8cc725f55"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
