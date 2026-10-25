# Source of truth for the formula in fullstackspectrum/homebrew-vulnly. The publish
# workflow copies it across on each release, rewriting url and sha256 to point
# at the new sdist on PyPI, so the values below only need to be valid, not
# current. Edit everything else here rather than in the tap.
class Vulnly < Formula
  include Language::Python::Virtualenv

  desc "Offline, self-contained HTML vulnerability reports from scanner output"
  homepage "https://github.com/fullstackspectrum/Vulnly"
  url "https://files.pythonhosted.org/packages/2e/0f/9483695400479242e47cdabd4576776af198bca904b9d0aeed7ca29925a1/vulnly-1.1.0.tar.gz"
  sha256 "c5ec6e70c4d4bb5edca310bb6eae3e712b4472c853ed365ab7ab5d65697c7db8"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulnly --version")
  end
end
