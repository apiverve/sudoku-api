declare module '@apiverve/sudoku' {
  export interface sudokuOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface sudokuResponse {
    status: string;
    error: string | null;
    data: SudokuGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface SudokuGeneratorData {
      puzzle:     Puzzle;
      solution:   Puzzle;
      difficulty: null | string;
  }
  
  interface Puzzle {
      grid:  null | string;
      html:  null | string;
      image: Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }

  export default class sudokuWrapper {
    constructor(options: sudokuOptions);

    execute(callback: (error: any, data: sudokuResponse | null) => void): Promise<sudokuResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: sudokuResponse | null) => void): Promise<sudokuResponse>;
    execute(query?: Record<string, any>): Promise<sudokuResponse>;
  }
}
