# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "1207a16537c06c48b354a1242fb5273363313bb90a6eb1ce8ac0df40b22ac3d5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "560b5ead4866ef23a3b81fec3c2dfd496ec75d34d4e2f55c1ef3c97d66500567"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "fe28c7179633518ea91dbad8f7a64e68d3fa0bb1e0e0982ff3a212e37e60c991"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
