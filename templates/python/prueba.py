#!/usr/bin/env python3
"""
{{PROJECT_NAME}}

{{PROJECT_DESCRIPTION}}

Author: {{AUTHOR_NAME}}
Date: {{DATE}}
Version: {{VERSION}}
"""

import sys
import os
from typing import Optional, List, Dict, Any


def main() -> None:
    """
    Main function - Entry point of the application.
    """
    print(f"Starting {__file__}")

    # TODO: Add your main logic here

    print("Program completed successfully!")


def example_function(param: str, optional_param: Optional[int] = None) -> str:
    """
    Example function with type hints and docstring.

    Args:
        param (str): Description of the parameter
        optional_param (Optional[int], optional): Optional parameter. Defaults to None.

    Returns:
        str: Description of return value

    Raises:
        ValueError: When param is empty
    """
    if not param:
        raise ValueError("Parameter cannot be empty")

    result = f"Processing: {param}"
    if optional_param:
        result += f" with value: {optional_param}"

    return result


class ExampleClass:
    """
    Example class with basic structure.
    """

    def __init__(self, name: str) -> None:
        """
        Initialize the class.

        Args:
            name (str): Name for the instance
        """
        self.name = name
        self._private_var = 0

    def get_info(self) -> Dict[str, Any]:
        """
        Get information about the instance.

        Returns:
            Dict[str, Any]: Instance information
        """
        return {"name": self.name, "private_var": self._private_var}

    def update_private_var(self, value: int) -> None:
        """
        Update the private variable.

        Args:
            value (int): New value
        """
        self._private_var = value


def handle_error(error: Exception) -> None:
    """
    Handle errors gracefully.

    Args:
        error (Exception): The exception to handle
    """
    print(f"Error occurred: {error}", file=sys.stderr)
    sys.exit(1)


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\nProgram interrupted by user")
        sys.exit(0)
    except Exception as e:
        handle_error(e)
