# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformLs < Formula
  desc "Terraform Language Server"
  homepage "https://github.com/hashicorp/terraform-ls"
  version "0.20.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.20.0/terraform-ls_0.20.0_darwin_amd64.zip"
      sha256 "9f3e9bfcab1bfec0d136530581b622d3f1756348c659157fd859bd14c79fa3cd"
    end
    if Hardware::CPU.arm?
      url "https://releases.hashicorp.com/terraform-ls/0.20.0/terraform-ls_0.20.0_darwin_arm64.zip"
      sha256 "34ae586ad66bce478a8e190a5243f350a6213faa1d1d94431bd2d6d601d14021"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.20.0/terraform-ls_0.20.0_linux_amd64.zip"
      sha256 "542ff5ced22cf38ecea00ef6cbed6f0eb96e9b8d23100d4bfdaebecbf72c21fa"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.hashicorp.com/terraform-ls/0.20.0/terraform-ls_0.20.0_linux_arm.zip"
      sha256 "6e9f74c2e8b8f195291302ae7bb4920d81419865b1fa206c55615e67554d918e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.hashicorp.com/terraform-ls/0.20.0/terraform-ls_0.20.0_linux_arm64.zip"
      sha256 "84b843e09fe7fcb993fcefcf6860a52ab11ff78da3629f681d90d5ae0a38d71c"
    end
  end

  conflicts_with "terraform-ls"

  def install
    bin.install "terraform-ls"
  end

  test do
    system "#{bin}/terraform-ls --version"
  end
end
