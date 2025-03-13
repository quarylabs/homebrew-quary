# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.16"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.16/sqruff-darwin-aarch64.tar.gz"
    sha256 "9d14c9eb55b760c814e14b49d5a502da63084e295931693cb559fccfc93e1b93"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.16/sqruff-darwin-x86_64.tar.gz"
    sha256 "0773f5ed85dbfec825998218242bd76e05d8ca6efc2d835cd50330fb7291a625"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.16/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "20ce6ce921d5847afec4f4358aae9837716665cf42265e9437fe2f1fe6efd926"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
