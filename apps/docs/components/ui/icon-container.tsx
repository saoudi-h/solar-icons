import React from 'react'

export const IconContainer: React.FC<{ children: React.ReactNode }> = ({ children }) => (
    <div
        className={`
          rounded-md border bg-linear-to-t from-fd-background/80 to-secondary
          p-1 shadow-md
        `}>
        {children}
    </div>
)
