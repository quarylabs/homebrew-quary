# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "1244301cb9fbdbbaf0edb479661a59956f936a1c758e694dc6872a49c6613811"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "791c69f7792f7814601685f6aa7d09c5e2dbf9c03d2de17caf53b17a5b91cad1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "61a29a799d09f6dd29bbfc597783dbcf2aebc8d35ab150b8d2ee933a4dd0c66c"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
