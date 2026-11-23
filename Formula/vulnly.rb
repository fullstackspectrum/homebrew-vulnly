# Source of truth for the formula in fullstackspectrum/homebrew-vulnly. The publish
# workflow copies it across on each release, rewriting url and sha256 to point
# at the new sdist on PyPI, so the values below only need to be valid, not
# current. Edit everything else here rather than in the tap.
class Vulnly < Formula
  include Language::Python::Virtualenv

  desc "Offline, self-contained HTML vulnerability reports from scanner output"
  homepage "https://github.com/fullstackspectrum/Vulnly"
  url "https://files.pythonhosted.org/packages/74/ad/ce059331f2e735f1527522631ceac717b6bdbdc160b03c26f8c79be0096c/vulnly-1.3.1.tar.gz"
  sha256 "b55948a4aa6736a5289b884e557065d5c229c2ae1485de1f1f2bbd244a8e93f7"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulnly --version")
  end
end
