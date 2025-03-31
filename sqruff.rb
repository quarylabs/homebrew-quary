# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.24"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.24/sqruff-darwin-aarch64.tar.gz"
    sha256 "9f8ef482c171e31ea21dd28d574721518d2e95485145a1ce682ba957736222e8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.24/sqruff-darwin-x86_64.tar.gz"
    sha256 "e611848c7dfdfbd5ee64427f0321d1410e8d6edeab16e67430047db630eccc4a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.24/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "91f4970fa73f0d00fbc3e53b9c60c44db81f61f62ae529542835b15d8f7a43f1"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
