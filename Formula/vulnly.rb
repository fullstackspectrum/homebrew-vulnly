# Source of truth for the formula in fullstackspectrum/homebrew-vulnly. The publish
# workflow copies it across on each release, rewriting url and sha256 to point
# at the new sdist on PyPI, so the values below only need to be valid, not
# current. Edit everything else here rather than in the tap.
class Vulnly < Formula
  include Language::Python::Virtualenv

  desc "Offline, self-contained HTML vulnerability reports from scanner output"
  homepage "https://github.com/fullstackspectrum/Vulnly"
  url "https://files.pythonhosted.org/packages/71/d7/ea5e950b6556e9f3884359774f1122db455e5b47ca1e207ec3e24d5710c6/vulnly-1.3.0.tar.gz"
  sha256 "0a13c0b4d3f2e7c69aaa0fa307840e8f0bae7a1ad485c2e282cd88dec02ecc1b"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulnly --version")
  end
end
