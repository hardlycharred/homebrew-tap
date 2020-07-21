# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformLs < Formula
  desc "Terraform Language Server"
  homepage "https://github.com/hashicorp/terraform-ls"
  version "0.5.3"
  bottle :unneeded

  if OS.mac?
    url "https://releases.hashicorp.com/terraform-ls/0.5.3/terraform-ls_0.5.3_darwin_amd64.zip"
    sha256 "f1f2b2470c288fa6dd90a23b0a4c95de39b23272df3a48bd997a5f50b938a069"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://releases.hashicorp.com/terraform-ls/0.5.3/terraform-ls_0.5.3_linux_amd64.zip"
      sha256 "0af28e88d0a7fd70cd5591e8c6ee69fd541a8b91d2b644ebb422e44c28509634"
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
