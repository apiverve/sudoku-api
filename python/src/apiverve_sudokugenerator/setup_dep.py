from setuptools import setup, find_packages

setup(
    name='apiverve_sudokugenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sudoku Generator creates 9x9 Sudoku puzzle grids across multiple difficulty settings, with empty cells marked as zeros. Paid plans add the full solution grid for validation or hints.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/sudoku?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
