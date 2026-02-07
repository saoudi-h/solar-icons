import React from 'react'

export const IconContainer: React.FC<{ children: React.ReactNode }> = ({ children }) => (
    <div
        className={`
          from-fd-background/80 to-secondary rounded-md border bg-linear-to-t
          p-1 shadow-md
        `}>
        {children}
    </div>
)
