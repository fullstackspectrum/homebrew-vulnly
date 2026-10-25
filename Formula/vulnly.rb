# Source of truth for the formula in fullstackspectrum/homebrew-vulnly. The publish
# workflow copies it across on each release, rewriting url and sha256 to point
# at the new sdist on PyPI, so the values below only need to be valid, not
# current. Edit everything else here rather than in the tap.
class Vulnly < Formula
  include Language::Python::Virtualenv

  desc "Offline, self-contained HTML vulnerability reports from scanner output"
  homepage "https://github.com/fullstackspectrum/Vulnly"
  url "https://files.pythonhosted.org/packages/fd/90/c5b7620ba453cfbb2b0b052f5f9de630d4797779f67eca3bdc323f26366b/vulnly-1.1.1.tar.gz"
  sha256 "ecd7bd61588ba288d94fb0d215b6b6f08c91de4dbad8e8b1f251878289b9db34"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vulnly --version")
  end
end
