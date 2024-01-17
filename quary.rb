class Quary < Formula
  desc "Collaborative Business Intelligence.Your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  url "https://github.com/quarylabs/quary-cli/releases/download/0.0.65/quary-0.0.65-quary-macos-x86_64-gnu.zip"
  sha256 "b56146edcb1e85723256460486b512e94d22100b36317e4aa7d1f93a4f6c2bb2"
  def install
    bin.install "quary-0.0.65" => "quary"
  end
end
