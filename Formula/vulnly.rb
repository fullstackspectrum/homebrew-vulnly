# Source of truth for the formula in fullstackspectrum/homebrew-vulnly. The publish
# workflow copies it across on each release, rewriting url and sha256 to point
# at the new sdist on PyPI, so the values below only need to be valid, not
# current. Edit everything else here rather than in the tap.
class Vulnly < Formula
  include Language::Python::Virtualenv

  desc "Offline, self-contained HTML vulnerability reports from scanner output"
  homepage "https://github.com/fullstackspectrum/Vulnly"
  url "https://files.pythonhosted.org/packages/94/bb/208eb099670d4c73a66821d1fca278d03fc5b9d3e36ad7e58afddec6738d/vulnly-1.2.0.tar.gz"
  sha256 "45e1a0bab74f425a93129b9869b43d9a56a2f6193fca050a9add88773dcc28b7"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulnly --version")
  end
end
